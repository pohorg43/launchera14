.class public final Lv5/h$g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$generatedNestedClassNames$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,890:1\n1#2:891\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/g;

.field public final synthetic b:Lv5/h;


# direct methods
.method public constructor <init>(Lu5/g;Lv5/h;)V
    .registers 3

    iput-object p1, p0, Lv5/h$g;->a:Lu5/g;

    iput-object p2, p0, Lv5/h$g;->b:Lv5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lv5/h$g;->a:Lu5/g;

    iget-object p0, p0, Lv5/h$g;->b:Lv5/h;

    iget-object v1, v0, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->x:Lp6/e;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {v1, v0, p0}, Lp6/e;->f(Lu5/g;Li5/e;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
