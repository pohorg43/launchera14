.class public final Lv5/e$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaAnnotationDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaAnnotationDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor$type$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/e;


# direct methods
.method public constructor <init>(Lv5/e;)V
    .registers 2

    iput-object p1, p0, Lv5/e$c;->a:Lv5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lv5/e$c;->a:Lv5/e;

    invoke-virtual {v0}, Lv5/e;->e()Lh6/c;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v0, La7/i;->K0:La7/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lv5/e$c;->a:Lv5/e;

    iget-object p0, p0, Lv5/e;->b:Ly5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    goto :goto_87

    :cond_1d
    iget-object v1, p0, Lv5/e$c;->a:Lv5/e;

    iget-object v1, v1, Lv5/e;->a:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->o:Li5/e0;

    invoke-interface {v1}, Li5/e0;->k()Lf5/g;

    move-result-object v1

    const-string v2, "fqName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builtIns"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lh5/c;->a:Lh5/c;

    invoke-virtual {v2, v0}, Lh5/c;->g(Lh6/c;)Lh6/b;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lh6/b;->b()Lh6/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v1

    goto :goto_46

    :cond_45
    move-object v1, v3

    :goto_46
    if-nez v1, :cond_83

    iget-object v1, p0, Lv5/e$c;->a:Lv5/e;

    iget-object v1, v1, Lv5/e;->b:Ly5/a;

    invoke-interface {v1}, Ly5/a;->q()Ly5/g;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v2, p0, Lv5/e$c;->a:Lv5/e;

    iget-object v2, v2, Lv5/e;->a:Lu5/g;

    iget-object v2, v2, Lu5/g;->a:Lu5/c;

    iget-object v2, v2, Lu5/c;->k:Lu5/i;

    invoke-interface {v2, v1}, Lu5/i;->a(Ly5/g;)Li5/e;

    move-result-object v3

    :cond_5e
    if-nez v3, :cond_82

    iget-object p0, p0, Lv5/e$c;->a:Lv5/e;

    iget-object v1, p0, Lv5/e;->a:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->o:Li5/e0;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string v2, "topLevel(fqName)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->d:La6/j;

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->l:Li5/g0;

    invoke-static {v1, v0, p0}, Li5/w;->c(Li5/e0;Lh6/b;Li5/g0;)Li5/e;

    move-result-object v1

    goto :goto_83

    :cond_82
    move-object v1, v3

    :cond_83
    :goto_83
    invoke-interface {v1}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    :goto_87
    return-object p0
.end method
