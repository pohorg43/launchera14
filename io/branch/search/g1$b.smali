.class public final Lio/branch/search/g1$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/g1;->a(Lh4/j;)Lio/branch/search/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/g1$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/g1$b;

    invoke-direct {v0}, Lio/branch/search/g1$b;-><init>()V

    sput-object v0, Lio/branch/search/g1$b;->a:Lio/branch/search/g1$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/g1$b;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
