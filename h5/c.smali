.class public final Lh5/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/c$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaToKotlinClassMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaToKotlinClassMap.kt\norg/jetbrains/kotlin/builtins/jvm/JavaToKotlinClassMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n49#1,2:221\n49#1,2:223\n49#1,2:225\n49#1,2:227\n49#1,2:229\n49#1,2:231\n49#1,2:233\n49#1,2:235\n1#2:220\n*S KotlinDebug\n*F\n+ 1 JavaToKotlinClassMap.kt\norg/jetbrains/kotlin/builtins/jvm/JavaToKotlinClassMap\n*L\n54#1:221,2\n55#1:223,2\n56#1:225,2\n57#1:227,2\n58#1:229,2\n59#1:231,2\n60#1:233,2\n61#1:235,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh5/c;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Lh6/b;

.field public static final g:Lh6/c;

.field public static final h:Lh6/b;

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/d;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/d;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/d;",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/d;",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh5/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lh5/c;

    invoke-direct {v0}, Lh5/c;-><init>()V

    sput-object v0, Lh5/c;->a:Lh5/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lg5/c;->d:Lg5/c;

    iget-object v3, v2, Lg5/c;->a:Lh6/c;

    invoke-virtual {v3}, Lh6/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh5/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lg5/c;->f:Lg5/c;

    iget-object v4, v2, Lg5/c;->a:Lh6/c;

    invoke-virtual {v4}, Lh6/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh5/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lg5/c;->e:Lg5/c;

    iget-object v4, v2, Lg5/c;->a:Lh6/c;

    invoke-virtual {v4}, Lh6/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh5/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lg5/c;->g:Lg5/c;

    iget-object v4, v2, Lg5/c;->a:Lh6/c;

    invoke-virtual {v4}, Lh6/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh5/c;->e:Ljava/lang/String;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    const-string v2, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lh5/c;->f:Lh6/b;

    invoke-virtual {v1}, Lh6/b;->b()Lh6/c;

    move-result-object v1

    const-string v2, "FUNCTION_N_CLASS_ID.asSingleFqName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lh5/c;->g:Lh6/c;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->o:Lh6/b;

    sput-object v1, Lh5/c;->h:Lh6/b;

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->i:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->j:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->l:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->m:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lh5/c;->n:Ljava/util/HashMap;

    const/16 v1, 0x8

    new-array v1, v1, [Lh5/c$a;

    sget-object v2, Lf5/j$a;->B:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.iterable)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->J:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v7

    const-string v8, "kotlinReadOnly.packageFqName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    aput-object v4, v1, v7

    sget-object v2, Lf5/j$a;->A:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.iterator)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->I:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/Iterator;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x1

    aput-object v4, v1, v2

    sget-object v2, Lf5/j$a;->C:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.collection)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->K:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/Collection;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x2

    aput-object v4, v1, v2

    sget-object v2, Lf5/j$a;->D:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.list)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->L:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/List;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x3

    aput-object v4, v1, v2

    sget-object v2, Lf5/j$a;->F:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.set)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->N:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/Set;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x4

    aput-object v4, v1, v2

    sget-object v2, Lf5/j$a;->E:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.listIterator)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->M:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/ListIterator;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x5

    aput-object v4, v1, v2

    sget-object v2, Lf5/j$a;->G:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v4

    const-string v5, "topLevel(FqNames.map)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lf5/j$a;->O:Lh6/c;

    new-instance v6, Lh6/b;

    invoke-virtual {v4}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-virtual {v4}, Lh6/b;->h()Lh6/c;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v5

    invoke-direct {v6, v9, v5, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v5, Lh5/c$a;

    const-class v9, Ljava/util/Map;

    invoke-virtual {v0, v9}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v9

    invoke-direct {v5, v9, v4, v6}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v4, 0x6

    aput-object v5, v1, v4

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    sget-object v4, Lf5/j$a;->H:Lh6/c;

    invoke-virtual {v4}, Lh6/c;->g()Lh6/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object v2

    const-string v4, "topLevel(FqNames.map).cr…mes.mapEntry.shortName())"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->P:Lh6/c;

    new-instance v5, Lh6/b;

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    invoke-virtual {v2}, Lh6/b;->h()Lh6/c;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lh6/e;->a(Lh6/c;Lh6/c;)Lh6/c;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    new-instance v4, Lh5/c$a;

    const-class v6, Ljava/util/Map$Entry;

    invoke-virtual {v0, v6}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lh5/c$a;-><init>(Lh6/b;Lh6/b;Lh6/b;)V

    const/4 v2, 0x7

    aput-object v4, v1, v2

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lh5/c;->o:Ljava/util/List;

    const-class v2, Ljava/lang/Object;

    sget-object v4, Lf5/j$a;->b:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/String;

    sget-object v4, Lf5/j$a;->g:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/CharSequence;

    sget-object v4, Lf5/j$a;->f:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/Throwable;

    sget-object v4, Lf5/j$a;->l:Lh6/c;

    invoke-virtual {v0, v2, v4}, Lh5/c;->c(Ljava/lang/Class;Lh6/c;)V

    const-class v2, Ljava/lang/Cloneable;

    sget-object v4, Lf5/j$a;->d:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/Number;

    sget-object v4, Lf5/j$a;->j:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/Comparable;

    sget-object v4, Lf5/j$a;->m:Lh6/c;

    invoke-virtual {v0, v2, v4}, Lh5/c;->c(Ljava/lang/Class;Lh6/c;)V

    const-class v2, Ljava/lang/Enum;

    sget-object v4, Lf5/j$a;->k:Lh6/d;

    invoke-virtual {v0, v2, v4}, Lh5/c;->d(Ljava/lang/Class;Lh6/d;)V

    const-class v2, Ljava/lang/annotation/Annotation;

    sget-object v4, Lf5/j$a;->t:Lh6/c;

    invoke-virtual {v0, v2, v4}, Lh5/c;->c(Ljava/lang/Class;Lh6/c;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "kotlinFqNameUnsafe.toUnsafe()"

    if-eqz v1, :cond_30b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh5/c$a;

    sget-object v4, Lh5/c;->a:Lh5/c;

    iget-object v5, v1, Lh5/c$a;->a:Lh6/b;

    iget-object v6, v1, Lh5/c$a;->b:Lh6/b;

    iget-object v1, v1, Lh5/c$a;->c:Lh6/b;

    invoke-virtual {v4, v5, v6}, Lh5/c;->a(Lh6/b;Lh6/b;)V

    invoke-virtual {v1}, Lh6/b;->b()Lh6/c;

    move-result-object v4

    const-string v8, "mutableClassId.asSingleFqName()"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lh5/c;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lh6/c;->j()Lh6/d;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lh5/c;->m:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lh5/c;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lh6/b;->b()Lh6/c;

    move-result-object v2

    const-string v4, "readOnlyClassId.asSingleFqName()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lh6/b;->b()Lh6/c;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lh5/c;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Lh6/b;->b()Lh6/c;

    move-result-object v1

    invoke-virtual {v1}, Lh6/c;->j()Lh6/d;

    move-result-object v1

    const-string v6, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lh5/c;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Lh6/c;->j()Lh6/d;

    move-result-object v2

    const-string v5, "readOnlyFqName.toUnsafe()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a2

    :cond_30b
    invoke-static {}, Lp6/d;->values()[Lp6/d;

    move-result-object v0

    array-length v1, v0

    move v4, v7

    :goto_311
    if-ge v4, v1, :cond_34e

    aget-object v5, v0, v4

    sget-object v6, Lh5/c;->a:Lh5/c;

    invoke-virtual {v5}, Lp6/d;->f()Lh6/c;

    move-result-object v8

    invoke-static {v8}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v8

    const-string v9, "topLevel(jvmType.wrapperFqName)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lp6/d;->e()Lf5/h;

    move-result-object v5

    const-string v9, "jvmType.primitiveType"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "primitiveType"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lf5/j;->k:Lh6/c;

    iget-object v5, v5, Lf5/h;->a:Lh6/f;

    invoke-virtual {v9, v5}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v5

    const-string v9, "BUILT_INS_PACKAGE_FQ_NAM…d(primitiveType.typeName)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v5

    const-string v9, "topLevel(StandardNames.g…e(jvmType.primitiveType))"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v5}, Lh5/c;->a(Lh6/b;Lh6/b;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_311

    :cond_34e
    sget-object v0, Lf5/c;->a:Lf5/c;

    sget-object v0, Lf5/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_356
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/b;

    sget-object v4, Lh5/c;->a:Lh5/c;

    new-instance v5, Lh6/c;

    const-string v6, "kotlin.jvm.internal."

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lh6/b;->j()Lh6/f;

    move-result-object v8

    invoke-virtual {v8}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CompanionObject"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v5

    const-string v6, "topLevel(FqName(\"kotlin.…g() + \"CompanionObject\"))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lh6/h;->c:Lh6/f;

    invoke-virtual {v1, v6}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object v1

    const-string v6, "classId.createNestedClas…AME_FOR_COMPANION_OBJECT)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Lh5/c;->a(Lh6/b;Lh6/b;)V

    goto :goto_356

    :cond_39b
    move v0, v7

    :goto_39c
    const/16 v1, 0x17

    if-ge v0, v1, :cond_3db

    sget-object v1, Lh5/c;->a:Lh5/c;

    new-instance v4, Lh6/c;

    const-string v5, "kotlin.jvm.functions.Function"

    invoke-static {v5, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v4

    const-string v5, "topLevel(FqName(\"kotlin.…m.functions.Function$i\"))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lf5/j;->a(I)Lh6/b;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lh5/c;->a(Lh6/b;Lh6/b;)V

    new-instance v4, Lh6/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lh5/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lh6/c;-><init>(Ljava/lang/String;)V

    sget-object v5, Lh5/c;->h:Lh6/b;

    invoke-virtual {v1, v4, v5}, Lh5/c;->b(Lh6/c;Lh6/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39c

    :cond_3db
    :goto_3db
    const/16 v0, 0x16

    if-ge v7, v0, :cond_40e

    sget-object v0, Lg5/c;->g:Lg5/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lg5/c;->a:Lh6/c;

    invoke-virtual {v4}, Lh6/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh5/c;->a:Lh5/c;

    new-instance v4, Lh6/c;

    invoke-static {v0, v7}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lh6/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lh5/c;->h:Lh6/b;

    invoke-virtual {v1, v4, v0}, Lh5/c;->b(Lh6/c;Lh6/b;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3db

    :cond_40e
    sget-object v0, Lh5/c;->a:Lh5/c;

    sget-object v1, Lf5/j$a;->c:Lh6/d;

    invoke-virtual {v1}, Lh6/d;->i()Lh6/c;

    move-result-object v1

    const-string v3, "nothing.toSafe()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object v0

    sget-object v3, Lh5/c;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Lh6/c;->j()Lh6/d;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh6/b;Lh6/b;)V
    .registers 5

    sget-object p0, Lh5/c;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object v0

    invoke-virtual {v0}, Lh6/c;->j()Lh6/d;

    move-result-object v0

    const-string v1, "javaClassId.asSingleFqName().toUnsafe()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    const-string p2, "kotlinClassId.asSingleFqName()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lh5/c;->j:Ljava/util/HashMap;

    invoke-virtual {p0}, Lh6/c;->j()Lh6/d;

    move-result-object p0

    const-string v0, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lh6/c;Lh6/b;)V
    .registers 4

    sget-object p0, Lh5/c;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    const-string v0, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/Class;Lh6/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lh6/c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object p1

    invoke-static {p2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p2

    const-string v0, "topLevel(kotlinFqName)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh5/c;->a(Lh6/b;Lh6/b;)V

    return-void
.end method

.method public final d(Ljava/lang/Class;Lh6/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lh6/d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lh6/d;->i()Lh6/c;

    move-result-object p2

    const-string v0, "kotlinFqName.toSafe()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh5/c;->c(Ljava/lang/Class;Lh6/c;)V

    return-void
.end method

.method public final e(Ljava/lang/Class;)Lh6/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh6/b;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance p0, Lh6/c;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p0

    const-string p1, "topLevel(FqName(clazz.canonicalName))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_38

    :cond_23
    invoke-virtual {p0, v0}, Lh5/c;->e(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object p0

    const-string p1, "classId(outer).createNes…tifier(clazz.simpleName))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_38
    return-object p0
.end method

.method public final f(Lh6/d;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Lh6/d;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlinFqName.asString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p0, p2, p1}, Lk7/q;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_19

    move p1, p2

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    if-eqz p1, :cond_49

    const/16 p1, 0x30

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_35

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1, p1, v0}, Lk7/a;->b(CCZ)Z

    move-result p1

    if-eqz p1, :cond_35

    move p1, p2

    goto :goto_36

    :cond_35
    move p1, v0

    :goto_36
    if-nez p1, :cond_49

    invoke-static {p0}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x17

    if-lt p0, p1, :cond_47

    goto :goto_48

    :cond_47
    move p2, v0

    :goto_48
    return p2

    :cond_49
    return v0
.end method

.method public final g(Lh6/c;)Lh6/b;
    .registers 2

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh5/c;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/b;

    return-object p0
.end method

.method public final h(Lh6/d;)Lh6/b;
    .registers 3

    const-string v0, "kotlinFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh5/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lh5/c;->f(Lh6/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lh5/c;->f:Lh6/b;

    goto :goto_39

    :cond_10
    sget-object v0, Lh5/c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lh5/c;->f(Lh6/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p0, Lh5/c;->f:Lh6/b;

    goto :goto_39

    :cond_1b
    sget-object v0, Lh5/c;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lh5/c;->f(Lh6/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p0, Lh5/c;->h:Lh6/b;

    goto :goto_39

    :cond_26
    sget-object v0, Lh5/c;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lh5/c;->f(Lh6/d;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    sget-object p0, Lh5/c;->h:Lh6/b;

    goto :goto_39

    :cond_31
    sget-object p0, Lh5/c;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/b;

    :goto_39
    return-object p0
.end method

.method public final i(Lh6/d;)Lh6/c;
    .registers 2

    sget-object p0, Lh5/c;->l:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/c;

    return-object p0
.end method
