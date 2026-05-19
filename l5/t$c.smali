.class public final Ll5/t$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/t;-><init>(Ll5/a0;Lh6/c;Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr6/i;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyPackageViewDescriptorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyPackageViewDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/LazyPackageViewDescriptorImpl$memberScope$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1549#2:72\n1620#2,3:73\n*S KotlinDebug\n*F\n+ 1 LazyPackageViewDescriptorImpl.kt\norg/jetbrains/kotlin/descriptors/impl/LazyPackageViewDescriptorImpl$memberScope$1\n*L\n49#1:72\n49#1:73,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/t;


# direct methods
.method public constructor <init>(Ll5/t;)V
    .registers 2

    iput-object p1, p0, Ll5/t$c;->a:Ll5/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Ll5/t$c;->a:Ll5/t;

    iget-object v0, v0, Ll5/t;->f:Lx6/i;

    sget-object v1, Ll5/t;->h:[Lz4/n;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    goto/16 :goto_cf

    :cond_19
    iget-object v0, p0, Ll5/t$c;->a:Ll5/t;

    invoke-virtual {v0}, Ll5/t;->e0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/h0;

    invoke-interface {v3}, Li5/h0;->l()Lr6/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_42
    new-instance v0, Ll5/k0;

    iget-object v3, p0, Ll5/t$c;->a:Ll5/t;

    iget-object v4, v3, Ll5/t;->c:Ll5/a0;

    iget-object v3, v3, Ll5/t;->d:Lh6/c;

    invoke-direct {v0, v4, v3}, Ll5/k0;-><init>(Li5/e0;Lh6/c;)V

    invoke-static {v1, v0}, Li4/v;->V(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "package view scope for "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ll5/t$c;->a:Ll5/t;

    iget-object v3, v3, Ll5/t;->d:Lh6/c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll5/t$c;->a:Ll5/t;

    iget-object p0, p0, Ll5/t;->c:Ll5/a0;

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "debugName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "scopes"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Li7/d;

    invoke-direct {v4}, Li7/d;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr6/i;

    sget-object v6, Lr6/i$b;->b:Lr6/i$b;

    if-eq v5, v6, :cond_87

    instance-of v6, v5, Lr6/b;

    if-eqz v6, :cond_a3

    check-cast v5, Lr6/b;

    iget-object v5, v5, Lr6/b;->c:[Lr6/i;

    invoke-static {v4, v5}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_87

    :cond_a3
    invoke-virtual {v4, v5}, Li7/d;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_a7
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Li7/d;->size()I

    move-result v0

    if-eqz v0, :cond_cd

    const/4 v1, 0x0

    if-eq v0, v2, :cond_c6

    new-instance v0, Lr6/b;

    new-array v1, v1, [Lr6/i;

    invoke-virtual {v4, v1}, Li7/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lr6/i;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lr6/b;-><init>(Ljava/lang/String;[Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p0, v0

    goto :goto_cf

    :cond_c6
    invoke-virtual {v4, v1}, Li7/d;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    goto :goto_cf

    :cond_cd
    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    :goto_cf
    return-object p0
.end method
