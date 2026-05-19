.class public final Li5/h1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/h1$e;,
        Li5/h1$f;,
        Li5/h1$h;,
        Li5/h1$b;,
        Li5/h1$g;,
        Li5/h1$d;,
        Li5/h1$a;,
        Li5/h1$c;,
        Li5/h1$i;
    }
.end annotation


# static fields
.field public static final a:Li5/h1;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/i1;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Li5/h1;

    invoke-direct {v0}, Li5/h1;-><init>()V

    sput-object v0, Li5/h1;->a:Li5/h1;

    new-instance v0, Lj4/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lj4/c;-><init>(I)V

    sget-object v1, Li5/h1$f;->c:Li5/h1$f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lj4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/h1$e;->c:Li5/h1$e;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lj4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/h1$b;->c:Li5/h1$b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lj4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/h1$g;->c:Li5/h1$g;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lj4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/h1$h;->c:Li5/h1$h;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lj4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Li4/j0;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Li5/h1;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li5/i1;)Z
    .registers 2

    const-string p0, "visibility"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li5/h1$e;->c:Li5/h1$e;

    if-eq p1, p0, :cond_10

    sget-object p0, Li5/h1$f;->c:Li5/h1$f;

    if-ne p1, p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method
