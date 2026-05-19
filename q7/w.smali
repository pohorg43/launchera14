.class public final Lq7/w;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ll4/f$a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/u<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq7/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/u<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq7/w;->a:Lq7/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ll4/f$a;

    invoke-interface {p2}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object v0

    iget-object p0, p0, Lq7/w;->a:Lq7/u;

    iget-object p0, p0, Lq7/u;->b:Ll4/f;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    sget v1, Lm7/s1;->L:I

    sget-object v1, Lm7/s1$b;->a:Lm7/s1$b;

    if-eq v0, v1, :cond_26

    if-eq p2, p0, :cond_1f

    const/high16 p0, -0x80000000

    goto :goto_21

    :cond_1f
    add-int/lit8 p0, p1, 0x1

    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_45

    :cond_26
    check-cast p0, Lm7/s1;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lm7/s1;

    :goto_2f
    if-nez p2, :cond_33

    const/4 p2, 0x0

    goto :goto_3a

    :cond_33
    if-ne p2, p0, :cond_36

    goto :goto_3a

    :cond_36
    instance-of v0, p2, Lr7/b0;

    if-nez v0, :cond_6e

    :goto_3a
    if-ne p2, p0, :cond_46

    if-nez p0, :cond_3f

    goto :goto_41

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    :goto_41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_45
    return-object p0

    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expected child of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    invoke-interface {p2}, Lm7/s1;->getParent()Lm7/s1;

    move-result-object p2

    goto :goto_2f
.end method
