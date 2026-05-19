.class public abstract Ll4/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$a;


# instance fields
.field private final key:Ll4/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/a;->key:Ll4/f$b;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ll4/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ll4/f$a$a;->a(Ll4/f$a;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ll4/f$b;)Ll4/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll4/f$a;",
            ">(",
            "Ll4/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->b(Ll4/f$a;Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ll4/f$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/f$b<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ll4/a;->key:Ll4/f$b;

    return-object p0
.end method

.method public minusKey(Ll4/f$b;)Ll4/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)",
            "Ll4/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->c(Ll4/f$a;Ll4/f$b;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(Ll4/f;)Ll4/f;
    .registers 2

    invoke-static {p0, p1}, Ll4/f$a$a;->d(Ll4/f$a;Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method
