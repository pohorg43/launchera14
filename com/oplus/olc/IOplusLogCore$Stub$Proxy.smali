.class Lcom/oplus/olc/IOplusLogCore$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/olc/IOplusLogCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/olc/IOplusLogCore$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oplus/olc/IOplusLogCore;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/olc/IOplusLogCore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/olc/IOplusLogCore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oplus.olc.IOplusLogCore"

    return-object p0
.end method

.method public sendException(JIIIJLjava/lang/String;)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "com.oplus.olc.IOplusLogCore"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v3, p0

    iget-object v3, v3, Lcom/oplus/olc/IOplusLogCore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x1

    const/4 v12, 0x0

    invoke-interface {v3, v6, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_55

    invoke-static {}, Lcom/oplus/olc/IOplusLogCore$Stub;->getDefaultImpl()Lcom/oplus/olc/IOplusLogCore;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-static {}, Lcom/oplus/olc/IOplusLogCore$Stub;->getDefaultImpl()Lcom/oplus/olc/IOplusLogCore;

    move-result-object v3

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/oplus/olc/IOplusLogCore;->sendException(JIIIJLjava/lang/String;)I

    move-result v0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_63

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_55
    :try_start_55
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_63

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_63
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
