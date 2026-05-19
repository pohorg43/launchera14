.class public final Lc5/q;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc5/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/q;

    invoke-direct {v0}, Lc5/q;-><init>()V

    sput-object v0, Lc5/q;->a:Lc5/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    const-class p0, Ljava/lang/Object;

    return-object p0
.end method
