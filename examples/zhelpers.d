// Helper module for example applications.
module zhelpers;

import zmqd;

string sRecv(ref Socket socket)
{
    ubyte[256] buffer;
    immutable size = socket.receive(buffer);
    import std.algorithm: min;
    return buffer[0 .. min(size,256)].idup.asString();
}
