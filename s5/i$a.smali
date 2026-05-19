.class public final Ls5/i$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/i;-><init>(Ly5/a;Lu5/g;)V
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
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaAnnotationMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaAnnotationMapper.kt\norg/jetbrains/kotlin/load/java/components/JavaTargetAnnotationDescriptor$allValueArguments$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls5/i;


# direct methods
.method public constructor <init>(Ls5/i;)V
    .registers 2

    iput-object p1, p0, Ls5/i$a;->a:Ls5/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Ls5/i$a;->a:Ls5/i;

    iget-object p0, p0, Ls5/b;->d:Ly5/b;

    instance-of v0, p0, Ly5/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Ls5/d;->a:Ls5/d;

    check-cast p0, Ly5/e;

    invoke-interface {p0}, Ly5/e;->c()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls5/d;->a(Ljava/util/List;)Lm6/g;

    move-result-object p0

    goto :goto_26

    :cond_16
    instance-of v0, p0, Ly5/m;

    if-eqz v0, :cond_25

    sget-object v0, Ls5/d;->a:Ls5/d;

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls5/d;->a(Ljava/util/List;)Lm6/g;

    move-result-object p0

    goto :goto_26

    :cond_25
    move-object p0, v1

    :goto_26
    if-eqz p0, :cond_35

    sget-object v0, Ls5/c;->a:Ls5/c;

    sget-object v0, Ls5/c;->c:Lh6/f;

    new-instance v1, Lh4/j;

    invoke-direct {v1, v0, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v1

    :cond_35
    if-nez v1, :cond_3c

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    :cond_3c
    return-object v1
.end method
