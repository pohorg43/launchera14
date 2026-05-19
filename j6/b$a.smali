.class public final Lj6/b$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Lj6/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj6/b$a;

    invoke-direct {v0}, Lj6/b$a;-><init>()V

    sput-object v0, Lj6/b$a;->a:Lj6/b$a;

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
    invoke-static {p1}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p0

    const-string p1, "getFqName(classifier)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lj6/c;->t(Lh6/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
