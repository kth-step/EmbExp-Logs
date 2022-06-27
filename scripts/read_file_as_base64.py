import argparse
import base64

parser = argparse.ArgumentParser()
parser.add_argument("binfilename", help="Binary path name", type=str)
args = parser.parse_args()

if args.binfilename:
    with open(args.binfilename, "rb") as f:
        data = base64.b64encode(f.read())
    print(data)

