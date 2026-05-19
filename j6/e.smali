.class public final Lj6/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lj6/i;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj6/e;

    invoke-direct {v0}, Lj6/e;-><init>()V

    sput-object v0, Lj6/e;->a:Lj6/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lj6/i;

    const-string p0, "$this$withOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lj6/i;->f()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lh6/c;

    sget-object v1, Lf5/j$a;->q:Lh6/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lf5/j$a;->r:Lh6/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Lj6/i;->i(Ljava/util/Set;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
