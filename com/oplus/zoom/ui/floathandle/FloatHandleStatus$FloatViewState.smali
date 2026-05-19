.class Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatViewState"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mScaleLeft:F

.field public mScaleRight:F

.field public mUserId:I

.field public side:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleLeft:F

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleRight:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->side:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;-><init>()V

    return-void
.end method
