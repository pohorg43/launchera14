.class public La2/a;
.super La2/h;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;

.field public d:Z

.field public e:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .registers 2

    invoke-direct {p0}, La2/h;-><init>()V

    iput-object p1, p0, La2/a;->b:Landroid/view/Choreographer;

    new-instance p1, La2/a$a;

    invoke-direct {p1, p0}, La2/a$a;-><init>(La2/a;)V

    iput-object p1, p0, La2/a;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, La2/a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, La2/a;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La2/a;->e:J

    iget-object v0, p0, La2/a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, La2/a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, La2/a;->b:Landroid/view/Choreographer;

    iget-object p0, p0, La2/a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La2/a;->d:Z

    iget-object v0, p0, La2/a;->b:Landroid/view/Choreographer;

    iget-object p0, p0, La2/a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
