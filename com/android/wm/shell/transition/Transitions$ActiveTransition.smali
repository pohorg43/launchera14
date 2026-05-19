.class final Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveTransition"
.end annotation


# instance fields
.field public mAborted:Z

.field public mFinishT:Landroid/view/SurfaceControl$Transaction;

.field public mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

.field public mInfo:Landroid/window/TransitionInfo;

.field private mMerged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field public mStartT:Landroid/view/SurfaceControl$Transaction;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public getTrack()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getTrack()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public isSync()Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    const-string v1, "@"

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    if-ltz v0, :cond_34

    const-string v0, "(#"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_42
    const-string/jumbo v2, "mToken null"

    :goto_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
