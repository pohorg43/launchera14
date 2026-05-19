.class public Lt7/f;
.super Lm7/j1;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/String;

.field public e:Lt7/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Lm7/j1;-><init>()V

    iput p1, p0, Lt7/f;->a:I

    iput p2, p0, Lt7/f;->b:I

    iput-wide p3, p0, Lt7/f;->c:J

    iput-object p5, p0, Lt7/f;->d:Ljava/lang/String;

    new-instance v6, Lt7/a;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lt7/a;-><init>(IIJLjava/lang/String;)V

    iput-object v6, p0, Lt7/f;->e:Lt7/a;

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 5

    iget-object p0, p0, Lt7/f;->e:Lt7/a;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p2, p1, v0, v1}, Lt7/a;->d(Lt7/a;Ljava/lang/Runnable;Lt7/i;ZI)V

    return-void
.end method

.method public dispatchYield(Ll4/f;Ljava/lang/Runnable;)V
    .registers 5

    iget-object p0, p0, Lt7/f;->e:Lt7/a;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p2, p1, v0, v1}, Lt7/a;->d(Lt7/a;Ljava/lang/Runnable;Lt7/i;ZI)V

    return-void
.end method
