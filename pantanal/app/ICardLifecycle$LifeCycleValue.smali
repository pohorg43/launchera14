.class public final enum Lpantanal/app/ICardLifecycle$LifeCycleValue;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/ICardLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycleValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/ICardLifecycle$LifeCycleValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Create:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Destroy:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum HostChange:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Pause:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Resume:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Start:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Stop:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Subscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Unknown:Lpantanal/app/ICardLifecycle$LifeCycleValue;

.field public static final enum Unsubscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/ICardLifecycle$LifeCycleValue;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lpantanal/app/ICardLifecycle$LifeCycleValue;

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unknown:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Subscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Create:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Start:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Resume:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Pause:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Stop:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Destroy:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unsubscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->HostChange:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unknown:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Subscribe"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Subscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Create"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Create:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Start"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Start:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Resume"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Resume:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Pause"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Pause:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Stop"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Stop:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Destroy"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Destroy:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "Unsubscribe"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unsubscribe:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    new-instance v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    const-string v1, "HostChange"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lpantanal/app/ICardLifecycle$LifeCycleValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->HostChange:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    invoke-static {}, Lpantanal/app/ICardLifecycle$LifeCycleValue;->$values()[Lpantanal/app/ICardLifecycle$LifeCycleValue;

    move-result-object v0

    sput-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->$VALUES:[Lpantanal/app/ICardLifecycle$LifeCycleValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/ICardLifecycle$LifeCycleValue;
    .registers 2

    const-class v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/ICardLifecycle$LifeCycleValue;

    return-object p0
.end method

.method public static values()[Lpantanal/app/ICardLifecycle$LifeCycleValue;
    .registers 1

    sget-object v0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->$VALUES:[Lpantanal/app/ICardLifecycle$LifeCycleValue;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/ICardLifecycle$LifeCycleValue;

    return-object v0
.end method
