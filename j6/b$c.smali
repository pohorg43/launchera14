.class public final Lj6/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lj6/b$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj6/b$c;

    invoke-direct {v0}, Lj6/b$c;-><init>()V

    sput-object v0, Lj6/b$c;->a:Lj6/b$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/h;Lj6/c;)Ljava/lang/String;
    .registers 4

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/b$c;->b(Li5/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Li5/h;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    const-string v1, "descriptor.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lj6/r;->a(Lh6/f;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Li5/a1;

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p1

    const-string v1, "descriptor.containingDeclaration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Li5/e;

    if-eqz v1, :cond_26

    check-cast p1, Li5/h;

    invoke-virtual {p0, p1}, Lj6/b$c;->b(Li5/h;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_26
    instance-of p0, p1, Li5/h0;

    if-eqz p0, :cond_4c

    check-cast p1, Li5/h0;

    invoke-interface {p1}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->j()Lh6/d;

    move-result-object p0

    const-string p1, "descriptor.fqName.toUnsafe()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh6/d;->g()Ljava/util/List;

    move-result-object p0

    const-string p1, "pathSegments()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj6/r;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    if-eqz p0, :cond_5d

    const-string p1, ""

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    const/16 p1, 0x2e

    invoke-static {p0, p1, v0}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5d
    return-object v0
.end method
