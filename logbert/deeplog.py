import os
import pickle

from logbert.logdeep.models.lstm import deeplog
from logbert.logdeep.tools.predict import Predicter
from logbert.logdeep.tools.train import Trainer
from logbert.logdeep.dataset.vocab import Vocab


def run_deeplog(options):
    if not os.path.exists(options["vocab_path"]):
        with open(options["train_vocab"], 'rb') as f:
            data = pickle.load(f)
        logs = [x['EventId'] for x in data]
        vocab = Vocab(logs)
        print("vocab size", len(vocab))
        print("save vocab in", options["vocab_path"])
        vocab.save_vocab(options["vocab_path"])

    Trainer(options).start_train()
    Predicter(options).predict_unsupervised()
