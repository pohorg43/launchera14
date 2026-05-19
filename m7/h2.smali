.class public final Lm7/h2;
.super Lm7/w1;
.source ""


# instance fields
.field public final e:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p1, p0, Lm7/h2;->e:Ll4/d;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lm7/h2;->e:Ll4/d;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/h2;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
