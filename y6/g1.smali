.class public final Ly6/g1;
.super Lf7/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/g1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf7/e<",
        "Ly6/e1<",
        "*>;",
        "Ly6/e1<",
        "*>;>;",
        "Ljava/lang/Iterable<",
        "Ly6/e1<",
        "*>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n105#1,9:134\n105#1,9:143\n105#1,9:152\n766#2:161\n857#2,2:162\n*S KotlinDebug\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n*L\n74#1:134,9\n78#1:143,9\n82#1:152,9\n99#1:161\n99#1:162,2\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Ly6/g1$a;

.field public static final c:Ly6/g1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly6/g1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly6/g1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly6/g1;->b:Ly6/g1$a;

    new-instance v0, Ly6/g1;

    sget-object v1, Li4/y;->a:Li4/y;

    invoke-direct {v0, v1}, Ly6/g1;-><init>(Ljava/util/List;)V

    sput-object v0, Ly6/g1;->c:Ly6/g1;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/e1<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lf7/e;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/e1;

    invoke-virtual {v0}, Ly6/e1;->b()Lz4/d;

    move-result-object v1

    const-string v2, "tClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {v2, v1}, Lf7/v;->b(Lz4/d;)I

    move-result v1

    iget-object v2, p0, Lf7/e;->a:Lf7/c;

    invoke-virtual {v2}, Lf7/c;->a()I

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    goto :goto_54

    :cond_33
    iget-object v2, p0, Lf7/e;->a:Lf7/c;

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lf7/r;

    iget v3, v2, Lf7/r;->b:I

    if-ne v3, v1, :cond_48

    new-instance v2, Lf7/r;

    invoke-direct {v2, v0, v1}, Lf7/r;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lf7/e;->a:Lf7/c;

    goto :goto_7

    :cond_48
    new-instance v4, Lf7/d;

    invoke-direct {v4}, Lf7/d;-><init>()V

    iput-object v4, p0, Lf7/e;->a:Lf7/c;

    iget-object v2, v2, Lf7/r;->a:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lf7/d;->d(ILjava/lang/Object;)V

    :goto_54
    iget-object v2, p0, Lf7/e;->a:Lf7/c;

    invoke-virtual {v2, v1, v0}, Lf7/c;->d(ILjava/lang/Object;)V

    goto :goto_7

    :cond_5a
    new-instance v2, Lf7/r;

    invoke-direct {v2, v0, v1}, Lf7/r;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lf7/e;->a:Lf7/c;

    goto :goto_7

    :cond_62
    return-void
.end method
