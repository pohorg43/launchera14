.class public final Lq7/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/d;
.implements Ln4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll4/d<",
        "TT;>;",
        "Ln4/d;"
    }
.end annotation


# instance fields
.field public final a:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ll4/f;


# direct methods
.method public constructor <init>(Ll4/d;Ll4/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TT;>;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/y;->a:Ll4/d;

    iput-object p2, p0, Lq7/y;->b:Ll4/f;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Lq7/y;->a:Ll4/d;

    instance-of v0, p0, Ln4/d;

    if-eqz v0, :cond_9

    check-cast p0, Ln4/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lq7/y;->b:Ll4/f;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lq7/y;->a:Ll4/d;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
