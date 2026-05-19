.class public final La6/j$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/j;->a(Li5/h0;La6/t;)Lr6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:La6/j$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La6/j$b;

    invoke-direct {v0}, La6/j$b;-><init>()V

    sput-object v0, La6/j$b;->a:La6/j$b;

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

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method
