import torch
import torch.nn as nn


class Net(nn.Module):

    def __init__(self, hidden_dim, out_dim, device, dtype, drop_out=0.1,):
        super(Net, self).__init__()
        self.hidden_dim1 = hidden_dim
        self.out_dim = out_dim
        self.drop_out = drop_out
        self.device = device
        self.dtype = dtype
        
        self.fc1 = nn.Linear(1280, hidden_dim, dtype=dtype, device=device)
        self.fc2 = nn.Linear(hidden_dim, out_dim, dtype=dtype, device=device)
        self.dropout = nn.Dropout(p=drop_out)

    def forward(self, x):
        x = torch.relu(self.fc1(x))
        x = self.fc2(x)
        return x