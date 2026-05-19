.class public final Lm7/r1;
.super Lm7/w1;
.source ""


# instance fields
.field public final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p1, p0, Lm7/r1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lm7/r1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lm7/r1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
