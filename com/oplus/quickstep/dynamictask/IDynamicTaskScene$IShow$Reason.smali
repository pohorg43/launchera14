.class public final enum Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum ATTACH_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum CONTENT_UNPROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum FOCUS_NEW:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

.field public static final enum ZOOM_HIDE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ATTACH_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_NEW:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ZOOM_HIDE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->CONTENT_UNPROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    const-string v3, "open"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "ATTACH_RECENT"

    const/4 v2, 0x1

    const-string v3, "attach recents view"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ATTACH_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "ENTER_RECENT"

    const/4 v2, 0x2

    const-string v3, "enter recents view"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "FOCUS_NEW"

    const/4 v2, 0x3

    const-string v3, "focus"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_NEW:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "FOCUS_CHANGED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "ZOOM_HIDE"

    const/4 v2, 0x5

    const-string v3, "zoom hide"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ZOOM_HIDE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const-string v1, "CONTENT_UNPROTECTED"

    const/4 v2, 0x6

    const-string v3, "not protected"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->CONTENT_UNPROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->$values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

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

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->desc:Ljava/lang/String;

    return-object p0
.end method
