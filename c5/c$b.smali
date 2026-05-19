.class public final Lc5/c$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Lh4/j<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lz4/t;",
        ">;+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lz4/r;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lc5/c$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/c$b;

    invoke-direct {v0}, Lc5/c$b;-><init>()V

    sput-object v0, Lc5/c$b;->a:Lc5/c$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Class;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method
