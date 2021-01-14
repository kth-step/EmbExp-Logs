
import logging
import time


class NonPollingListIterator:
	def __init__(self, listval):
		self.listval = listval
		self.listiter = listval.__iter__()
		self.iter_round = 0
		self.iter_idx   = 0
		self.iter_size  = len(listval)

	def get_iterinfo(self):
		return (self.iter_round, self.iter_idx, self.iter_size)

	def __iter__(self):
		return self

	def __next__(self):
		nextval = self.listiter.__next__()
		self.iter_idx += 1
		return nextval


class PollingIterator:
	def __init__(self, genfun, genargs, poll_max_rounds = 5, poll_round_time = 60):
		self.genfun = genfun
		self.genargs = genargs

		self.poll_round_time = poll_round_time
		self.poll_max_rounds = poll_max_rounds
		if self.poll_max_rounds < 1:
			self.poll_max_rounds = 1
		self._exp_list_iter = iter([])
		self.iter_round = 0
		self.iter_idx   = 0
		self.iter_size  = 0

	def get_iterinfo(self):
		return (self.iter_round, self.iter_idx, self.iter_size)

	def update_exps_list(self):
		for i in range(self.poll_max_rounds):
			if i > 0:
				logging.warning(f"sleeping for {self.poll_round_time}s")
				time.sleep(self.poll_round_time)
			logging.warning("generating new exp_list")
			exp_list = self.genfun(**self.genargs)
			logging.warning(f"generated {len(exp_list)} items")
			if len(exp_list) > 0:
				break
		self.iter_round += 1
		self.iter_idx   = 0
		self.iter_size  = len(exp_list)
		self._exp_list_iter = iter(exp_list)

	def __iter__(self):
		return self

	def __next__(self):
		try:
			next_exp = self._exp_list_iter.__next__()
		except StopIteration:
			self.update_exps_list()
			next_exp = self._exp_list_iter.__next__()
		self.iter_idx += 1
		return next_exp

