.class public final Le5/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpecialJvmAnnotations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialJvmAnnotations.kt\norg/jetbrains/kotlin/SpecialJvmAnnotations\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 SpecialJvmAnnotations.kt\norg/jetbrains/kotlin/SpecialJvmAnnotations\n*L\n22#1:43,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Le5/b;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lh6/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lh6/c;

    sget-object v1, Lr5/f0;->a:Lh6/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lr5/f0;->h:Lh6/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lr5/f0;->i:Lh6/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lr5/f0;->c:Lh6/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lr5/f0;->d:Lh6/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lr5/f0;->f:Lh6/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_42
    sput-object v1, Le5/b;->b:Ljava/util/Set;

    sget-object v0, Lr5/f0;->g:Lh6/c;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string v1, "topLevel(JvmAnnotationNames.REPEATABLE_ANNOTATION)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Le5/b;->c:Lh6/b;

    return-void
.end method
