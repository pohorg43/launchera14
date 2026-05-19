.class public final Li5/b1$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b1;->b(Li5/i;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/l;",
        "Lj7/h<",
        "+",
        "Li5/a1;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Li5/b1$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li5/b1$c;

    invoke-direct {v0}, Li5/b1$c;-><init>()V

    sput-object v0, Li5/b1$c;->a:Li5/b1$c;

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
    .registers 2

    check-cast p1, Li5/l;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li5/a;

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    const-string p1, "it as CallableDescriptor).typeParameters"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    return-object p0
.end method
