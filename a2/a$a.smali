.class public La2/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La2/a;


# direct methods
.method public constructor <init>(La2/a;)V
    .registers 2

    iput-object p1, p0, La2/a$a;->a:La2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 7

    iget-object p1, p0, La2/a$a;->a:La2/a;

    iget-boolean p2, p1, La2/a;->d:Z

    if-eqz p2, :cond_26

    iget-object p1, p1, La2/h;->a:La2/i;

    if-nez p1, :cond_b

    goto :goto_26

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, La2/a$a;->a:La2/a;

    iget-object v1, v0, La2/h;->a:La2/i;

    iget-wide v2, v0, La2/a;->e:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, La2/i;->d(D)V

    iget-object p0, p0, La2/a$a;->a:La2/a;

    iput-wide p1, p0, La2/a;->e:J

    iget-object p1, p0, La2/a;->b:Landroid/view/Choreographer;

    iget-object p0, p0, La2/a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_26
    :goto_26
    return-void
.end method
