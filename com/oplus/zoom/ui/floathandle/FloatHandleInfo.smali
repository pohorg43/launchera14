.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLOAT_HANDLE_ON_LEFT:I = 0x0

.field public static final FLOAT_HANDLE_ON_RIGHT:I = 0x1


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public packageName:Ljava/lang/String;

.field public scaleY:F

.field public side:I

.field public taskId:I

.field public userId:I

.field public zoomPositionInfo:Lcom/oplus/zoom/common/ZoomPositionInfo;

.field public zoomState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 3

    if-eqz p1, :cond_22

    iget v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    iget-object v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    iget v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    iget v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    iget-object v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomPositionInfo:Lcom/oplus/zoom/common/ZoomPositionInfo;

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomPositionInfo:Lcom/oplus/zoom/common/ZoomPositionInfo;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomState:I

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomState:I

    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FloatHandleInfo{taskId = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", side = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zoomPositionInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomPositionInfo:Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoomState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomState:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
