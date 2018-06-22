FILE_LIST_TRAIN = "../../../data/processed/train.txt"
FILE_LIST_TEST = "../../../data/processed/test.txt"
TEST_SIZE = 0.25
OF_NUM_WORKER = 30
OF_WIDTH = 340
OF_HEIGHT = 256
OF_NUM_GPU = 2
CNN_ARCH = "BNInception"
NUM_SEGMENTS = 3
GRADIEN_CLIPPING_FLOW = 20
LEARNING_RATE = 0.001
LEARNING_RATE_DECAY_1 = 30
LEARNING_RATE_DECAY_2 = 60
EPOCHS_FLOW = 340
BATCH_SIZE = 32
NUM_WORKERS = 4
DROPOUT = 0.8
SNAPSHOT_PREF = "e-learning_bninception_"
FLOW_PREF = "flow_"


train_flow:
	python main.py e-learning Flow $(FILE_LIST_TRAIN) $(FILE_LIST_TEST) --arch $(CNN_ARCH) --num_segments $(NUM_SEGMENTS) --gd $(GRADIEN_CLIPPING_FLOW) --lr $(LEARNING_RATE) --lr_steps $(LEARNING_RATE_DECAY_1) $(LEARNING_RATE_DECAY_2) --epochs $(EPOCHS_FLOW) -b $(BATCH_SIZE) -j $(NUM_WORKERS) --dropout $(DROPOUT) --snapshot_pref $(SNAPSHOT_PREF) --flow_pref $(FLOW_PREF)

