.class public final La6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/b$a;,
        La6/b$b;
    }
.end annotation


# instance fields
.field public final synthetic a:La6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "La6/w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic c:La6/t;

.field public final synthetic d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "La6/w;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6/a;Ljava/util/HashMap;La6/t;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "La6/w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "La6/t;",
            "Ljava/util/HashMap<",
            "La6/w;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "La6/w;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, La6/b;->a:La6/a;

    iput-object p2, p0, La6/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, La6/b;->c:La6/t;

    iput-object p5, p0, La6/b;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh6/f;Ljava/lang/String;Ljava/lang/Object;)La6/t$c;
    .registers 6

    const-string p3, "name"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, La6/w;

    const/16 v0, 0x23

    invoke-static {p1, v0, p2}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p3, p1, p2}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, La6/b$b;

    invoke-direct {p1, p0, p3}, La6/b$b;-><init>(La6/b;La6/w;)V

    return-object p1
.end method

.method public b(Lh6/f;Ljava/lang/String;)La6/t$e;
    .registers 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, La6/b$a;

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v3, "name.asString()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La6/w;

    invoke-static {p1, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, p0, v0}, La6/b$a;-><init>(La6/b;La6/w;)V

    return-object v2
.end method
