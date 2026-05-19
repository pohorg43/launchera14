.class public final Lh5/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaToKotlinClassMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaToKotlinClassMapper.kt\norg/jetbrains/kotlin/builtins/jvm/JavaToKotlinClassMapper\n*L\n1#1,80:1\n75#1,3:81\n75#1,3:84\n*S KotlinDebug\n*F\n+ 1 JavaToKotlinClassMapper.kt\norg/jetbrains/kotlin/builtins/jvm/JavaToKotlinClassMapper\n*L\n59#1:81,3\n65#1:84,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh5/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->a:Lh5/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lh5/d;Lh6/c;Lf5/g;Ljava/lang/Integer;I)Li5/e;
    .registers 5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "builtIns"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh5/c;->a:Lh5/c;

    invoke-virtual {p0, p1}, Lh5/c;->g(Lh6/c;)Lh6/b;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    invoke-virtual {p2, p0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return-object p0
.end method


# virtual methods
.method public final a(Li5/e;)Z
    .registers 2

    const-string p0, "mutable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh5/c;->a:Lh5/c;

    invoke-static {p1}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p0

    sget-object p1, Lh5/c;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
