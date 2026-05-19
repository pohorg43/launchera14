.class public final Lc5/c$e;
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
        "Lc5/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc5/c$e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/c$e;

    invoke-direct {v0}, Lc5/c$e;-><init>()V

    sput-object v0, Lc5/c$e;->a:Lc5/c$e;

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

    new-instance p0, Lc5/b0;

    invoke-direct {p0, p1}, Lc5/b0;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method
