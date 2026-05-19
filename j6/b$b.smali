.class public final Lj6/b$b;
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
    name = "b"
.end annotation


# static fields
.field public static final a:Lj6/b$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj6/b$b;

    invoke-direct {v0}, Lj6/b$b;-><init>()V

    sput-object v0, Lj6/b$b;->a:Lj6/b$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/h;Lj6/c;)Ljava/lang/String;
    .registers 3

    const-string p0, "classifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Li5/a1;

    if-eqz p0, :cond_1f

    check-cast p1, Li5/a1;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lj6/c;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object p1

    instance-of p2, p1, Li5/e;

    if-nez p2, :cond_24

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Li4/m0;

    invoke-direct {p1, p0}, Li4/m0;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lj6/r;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
