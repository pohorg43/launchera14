.class public final Lv5/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/d;-><init>(Lu5/g;Ly5/u;Lv5/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmPackageScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/JvmPackageScope$kotlinScopes$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,109:1\n1603#2,9:110\n1855#2:119\n1856#2:121\n1612#2:122\n1#3:120\n37#4,2:123\n*S KotlinDebug\n*F\n+ 1 JvmPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/JvmPackageScope$kotlinScopes$2\n*L\n46#1:110,9\n46#1:119\n46#1:121\n46#1:122\n46#1:120\n49#1:123,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/d;


# direct methods
.method public constructor <init>(Lv5/d;)V
    .registers 2

    iput-object p1, p0, Lv5/d$a;->a:Lv5/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lv5/d$a;->a:Lv5/d;

    iget-object v0, v0, Lv5/d;->c:Lv5/j;

    invoke-virtual {v0}, Lv5/j;->z0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lv5/d$a;->a:Lv5/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La6/t;

    iget-object v3, p0, Lv5/d;->b:Lu5/g;

    iget-object v3, v3, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->d:La6/j;

    iget-object v4, p0, Lv5/d;->c:Lv5/j;

    invoke-virtual {v3, v4, v2}, La6/j;->a(Li5/h0;La6/t;)Lr6/i;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_35
    invoke-static {v1}, Lh7/a;->b(Ljava/lang/Iterable;)Li7/d;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lr6/i;

    invoke-virtual {p0, v0}, Li7/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lr6/i;

    return-object p0
.end method
