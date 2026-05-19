.class public final enum Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum ANIM_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum CLEAR_ALL:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum CONTENT_PROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum RECNET_DETACH:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum REMOVE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum SYSTEM_NOTIFIED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

.field public static final enum WINDOW_MODE_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;
    .registers 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->ANIM_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->WINDOW_MODE_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->REMOVE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLEAR_ALL:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->SYSTEM_NOTIFIED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->RECNET_DETACH:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CONTENT_PROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "ANIM_LAUNCH_TASK"

    const/4 v2, 0x1

    const-string v3, "anim launch task"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->ANIM_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "LAUNCH_TASK"

    const/4 v2, 0x2

    const-string v3, "launch task"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "PULL_LAUNCH_TASK"

    const/4 v2, 0x3

    const-string v3, "pull launch task start"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "EXIT_RECENT"

    const/4 v2, 0x4

    const-string v3, "exit recents view"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "WINDOW_MODE_CHANGED"

    const/4 v2, 0x5

    const-string v3, "window mode changed"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->WINDOW_MODE_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "REMOVE"

    const/4 v2, 0x6

    const-string v3, "remove task"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->REMOVE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "CLEAR_ALL"

    const/4 v2, 0x7

    const-string v3, "clear all"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLEAR_ALL:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "SYSTEM_NOTIFIED"

    const/16 v2, 0x8

    const-string v3, "notified exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->SYSTEM_NOTIFIED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "RECNET_DETACH"

    const/16 v2, 0x9

    const-string v3, "recents view detached"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->RECNET_DETACH:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const-string v1, "CONTENT_PROTECTED"

    const/16 v2, 0xa

    const-string v3, "content protected"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CONTENT_PROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->$values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->desc:Ljava/lang/String;

    return-object p0
.end method
