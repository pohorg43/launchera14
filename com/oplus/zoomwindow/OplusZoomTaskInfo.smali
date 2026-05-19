.class public Lcom/oplus/zoomwindow/OplusZoomTaskInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callPkg:Ljava/lang/String;

.field public extension:Landroid/os/Bundle;

.field public landScape:Z

.field public launchFrom:I

.field public pkgName:Ljava/lang/String;

.field public rotation:I

.field public scale:F

.field public scaleRect:Landroid/graphics/Rect;

.field public state:I

.field public taskId:I

.field public token:Landroid/window/WindowContainerToken;

.field public topChildTaskId:I

.field public userId:I

.field public windowCrop:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomTaskInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    const-class v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    if-eqz p1, :cond_54

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    iget p1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    :cond_54
    return-void
.end method


# virtual methods
.method public copy(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    if-eqz p1, :cond_3c

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    iget p1, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    :cond_3c
    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "OplusZoomTaskInfo{token="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topChildTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", callPkg=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    const-string v3, ", state="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", launchFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaleRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", windowCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", landScape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerToken;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->topChildTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->callPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->launchFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->landScape:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->rotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
