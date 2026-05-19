.class public final Lh5/e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/e0;",
        "Lf5/b;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmBuiltInClassDescriptorFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInClassDescriptorFactory.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInClassDescriptorFactory$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n800#2,11:58\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInClassDescriptorFactory.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInClassDescriptorFactory$1\n*L\n23#1:58,11\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh5/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh5/e;

    invoke-direct {v0}, Lh5/e;-><init>()V

    sput-object v0, Lh5/e;->a:Lh5/e;

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
    .registers 4

    check-cast p1, Li5/e0;

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh5/f;->f:Lh6/c;

    invoke-interface {p1, p0}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    invoke-interface {p0}, Li5/l0;->e0()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lf5/b;

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2c
    invoke-static {p1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf5/b;

    return-object p0
.end method
