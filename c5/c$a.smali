.class public final Lc5/c$a;
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
        "Lz4/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc5/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/c$a;

    invoke-direct {v0}, Lc5/c$a;-><init>()V

    sput-object v0, Lc5/c$a;->a:Lc5/c$a;

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
    .registers 3

    check-cast p1, Ljava/lang/Class;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc5/c;->a(Ljava/lang/Class;)Lc5/o;

    move-result-object p0

    sget-object p1, Li4/y;->a:Li4/y;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p1}, La5/c;->a(Lz4/f;Ljava/util/List;ZLjava/util/List;)Lz4/r;

    move-result-object p0

    return-object p0
.end method
