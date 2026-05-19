.class public final Lio/branch/search/p1$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/p1;-><init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/usage/UsageEvents;",
        "Lio/branch/search/o1;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/p1$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/p1$a;

    invoke-direct {v0}, Lio/branch/search/p1$a;-><init>()V

    sput-object v0, Lio/branch/search/p1$a;->a:Lio/branch/search/p1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/usage/UsageEvents;)Lio/branch/search/o1;
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/o1;

    invoke-direct {p0, p1}, Lio/branch/search/o1;-><init>(Landroid/app/usage/UsageEvents;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/app/usage/UsageEvents;

    invoke-virtual {p0, p1}, Lio/branch/search/p1$a;->a(Landroid/app/usage/UsageEvents;)Lio/branch/search/o1;

    move-result-object p0

    return-object p0
.end method
