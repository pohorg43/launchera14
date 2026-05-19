.class public final La6/f$b;
.super La6/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/f;->s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBinaryClassAnnotationAndConstantLoaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinaryClassAnnotationAndConstantLoaderImpl.kt\norg/jetbrains/kotlin/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n800#2,11:246\n1620#2,3:257\n*S KotlinDebug\n*F\n+ 1 BinaryClassAnnotationAndConstantLoaderImpl.kt\norg/jetbrains/kotlin/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1\n*L\n93#1:246,11\n93#1:257,3\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:La6/f;

.field public final synthetic d:Li5/e;

.field public final synthetic e:Lh6/b;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Li5/v0;


# direct methods
.method public constructor <init>(La6/f;Li5/e;Lh6/b;Ljava/util/List;Li5/v0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/f;",
            "Li5/e;",
            "Lh6/b;",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;",
            "Li5/v0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, La6/f$b;->c:La6/f;

    iput-object p2, p0, La6/f$b;->d:Li5/e;

    iput-object p3, p0, La6/f$b;->e:Lh6/b;

    iput-object p4, p0, La6/f$b;->f:Ljava/util/List;

    iput-object p5, p0, La6/f$b;->g:Li5/v0;

    invoke-direct {p0, p1}, La6/f$a;-><init>(La6/f;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La6/f$b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, La6/f$b;->c:La6/f;

    iget-object v1, p0, La6/f$b;->e:Lh6/b;

    iget-object v2, p0, La6/f$b;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "annotationClassId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "arguments"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le5/b;->a:Le5/b;

    sget-object v3, Le5/b;->c:Lh6/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    goto :goto_49

    :cond_1f
    const-string v1, "value"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm6/r;

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    check-cast v1, Lm6/r;

    goto :goto_32

    :cond_31
    move-object v1, v4

    :goto_32
    if-nez v1, :cond_35

    goto :goto_49

    :cond_35
    iget-object v1, v1, Lm6/g;->a:Ljava/lang/Object;

    instance-of v2, v1, Lm6/r$a$b;

    if-eqz v2, :cond_3e

    move-object v4, v1

    check-cast v4, Lm6/r$a$b;

    :cond_3e
    if-nez v4, :cond_41

    goto :goto_49

    :cond_41
    iget-object v1, v4, Lm6/r$a$b;->a:Lm6/f;

    iget-object v1, v1, Lm6/f;->a:Lh6/b;

    invoke-virtual {v0, v1}, La6/d;->r(Lh6/b;)Z

    move-result v3

    :goto_49
    if-eqz v3, :cond_4c

    return-void

    :cond_4c
    iget-object v0, p0, La6/f$b;->c:La6/f;

    iget-object v1, p0, La6/f$b;->e:Lh6/b;

    invoke-virtual {v0, v1}, La6/d;->r(Lh6/b;)Z

    move-result v0

    if-eqz v0, :cond_57

    return-void

    :cond_57
    iget-object v0, p0, La6/f$b;->f:Ljava/util/List;

    new-instance v1, Lj5/d;

    iget-object v2, p0, La6/f$b;->d:Li5/e;

    invoke-interface {v2}, Li5/e;->m()Ly6/s0;

    move-result-object v2

    iget-object v3, p0, La6/f$b;->b:Ljava/util/HashMap;

    iget-object p0, p0, La6/f$b;->g:Li5/v0;

    invoke-direct {v1, v2, v3, p0}, Lj5/d;-><init>(Ly6/l0;Ljava/util/Map;Li5/v0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lh6/f;Lm6/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lm6/g<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    iget-object p0, p0, La6/f$b;->b:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method
