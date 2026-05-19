.class public final Ll4/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,196:1\n12720#2,3:197\n*S KotlinDebug\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n*L\n193#1:197,3\n*E\n"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final a:[Ll4/f;


# direct methods
.method public constructor <init>([Ll4/f;)V
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/c$a;->a:[Ll4/f;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Ll4/c$a;->a:[Ll4/f;

    sget-object v0, Ll4/h;->a:Ll4/h;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return-object v0
.end method
