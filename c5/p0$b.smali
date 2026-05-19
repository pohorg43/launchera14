.class public Lc5/p0$b;
.super Lc5/p0$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/p0$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lc5/p0$c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/p0$b;->c:Ljava/lang/Object;

    iput-object p1, p0, Lc5/p0$b;->b:Lkotlin/jvm/functions/Function0;

    return-void

    :cond_b
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "initializer"

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal"

    aput-object v0, p0, p1

    const/4 p1, 0x2

    const-string v0, "<init>"

    aput-object v0, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc5/p0$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_a

    sget-object p0, Lc5/p0$c;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lc5/p0$b;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v1, Lc5/p0$c;->a:Ljava/lang/Object;

    goto :goto_16

    :cond_15
    move-object v1, v0

    :goto_16
    iput-object v1, p0, Lc5/p0$b;->c:Ljava/lang/Object;

    return-object v0
.end method
