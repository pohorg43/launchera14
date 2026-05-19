.class final Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/seedling/SeedlingCardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpantanal/app/seedling/SeedlingStatusMonitor;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;

    invoke-direct {v0}, Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;-><init>()V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;

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

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;->invoke()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lpantanal/app/seedling/SeedlingStatusMonitor;
    .registers 1

    new-instance p0, Lpantanal/app/seedling/SeedlingStatusMonitor;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingStatusMonitor;-><init>()V

    return-object p0
.end method
