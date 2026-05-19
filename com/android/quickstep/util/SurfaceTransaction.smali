.class public Lcom/android/quickstep/util/SurfaceTransaction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;,
        Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    }
.end annotation


# instance fields
.field private final mTmpValues:[F

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTmpValues:[F

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/util/SurfaceTransaction;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTmpValues:[F

    return-object p0
.end method


# virtual methods
.method public forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 3

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;-><init>(Lcom/android/quickstep/util/SurfaceTransaction;Landroid/view/SurfaceControl;)V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;-><init>(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :goto_11
    return-object v0
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setVsyncId()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
