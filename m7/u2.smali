.class public final Lm7/u2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$a;
.implements Ll4/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll4/f$a;",
        "Ll4/f$b<",
        "Lm7/u2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lm7/u2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/u2;

    invoke-direct {v0}, Lm7/u2;-><init>()V

    sput-object v0, Lm7/u2;->a:Lm7/u2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
