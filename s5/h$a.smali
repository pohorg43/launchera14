.class public final Ls5/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/h;-><init>(Ly5/a;Lu5/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lh6/f;",
        "+",
        "Lm6/g<",
        "*>;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaAnnotationMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaAnnotationMapper.kt\norg/jetbrains/kotlin/load/java/components/JavaRetentionAnnotationDescriptor$allValueArguments$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls5/h;


# direct methods
.method public constructor <init>(Ls5/h;)V
    .registers 2

    iput-object p1, p0, Ls5/h$a;->a:Ls5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    sget-object v0, Ls5/d;->a:Ls5/d;

    iget-object p0, p0, Ls5/h$a;->a:Ls5/h;

    iget-object p0, p0, Ls5/b;->d:Ly5/b;

    instance-of v0, p0, Ly5/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p0, Ly5/m;

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p0, :cond_45

    sget-object v0, Ls5/d;->c:Ljava/util/Map;

    invoke-interface {p0}, Ly5/m;->e()Lh6/f;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    move-object p0, v1

    :goto_1f
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj5/m;

    if-eqz p0, :cond_45

    new-instance v0, Lm6/j;

    sget-object v2, Lf5/j$a;->w:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v3, "topLevel(StandardNames.F…ames.annotationRetention)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v3, "identifier(retention.name)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p0}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    goto :goto_46

    :cond_45
    move-object v0, v1

    :goto_46
    if-eqz v0, :cond_55

    sget-object p0, Ls5/c;->a:Ls5/c;

    sget-object p0, Ls5/c;->d:Lh6/f;

    new-instance v1, Lh4/j;

    invoke-direct {v1, p0, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v1

    :cond_55
    if-nez v1, :cond_5c

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    :cond_5c
    return-object v1
.end method
