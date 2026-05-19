.class public final La6/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/h;


# instance fields
.field public final a:La6/r;

.field public final b:La6/j;


# direct methods
.method public constructor <init>(La6/r;La6/j;)V
    .registers 4

    const-string v0, "kotlinClassFinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/k;->a:La6/r;

    iput-object p2, p0, La6/k;->b:La6/j;

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Lu6/g;
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La6/k;->a:La6/r;

    iget-object v1, p0, La6/k;->b:La6/j;

    invoke-virtual {v1}, La6/j;->c()Lu6/k;

    move-result-object v1

    iget-object v1, v1, Lu6/k;->c:Lu6/l;

    invoke-static {v1}, Lm4/d;->h(Lu6/l;)Lg6/e;

    move-result-object v1

    invoke-static {v0, p1, v1}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-interface {v0}, La6/t;->c()Lh6/b;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, La6/k;->b:La6/j;

    invoke-virtual {p0, v0}, La6/j;->h(La6/t;)Lu6/g;

    move-result-object p0

    return-object p0
.end method
