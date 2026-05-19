.class public final enum Lcom/pantanal/server/content/utils/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pantanal/server/content/utils/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum b:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum c:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum d:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum e:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum f:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum g:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum h:Lcom/pantanal/server/content/utils/a$a;

.field public static final enum i:Lcom/pantanal/server/content/utils/a$a;

.field public static final synthetic j:[Lcom/pantanal/server/content/utils/a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/pantanal/server/content/utils/a$a;

    const-string v1, "CAUGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantanal/server/content/utils/a$a;->a:Lcom/pantanal/server/content/utils/a$a;

    new-instance v1, Lcom/pantanal/server/content/utils/a$a;

    const-string v3, "DEVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pantanal/server/content/utils/a$a;->b:Lcom/pantanal/server/content/utils/a$a;

    new-instance v3, Lcom/pantanal/server/content/utils/a$a;

    const-string v5, "COMPATIBILITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pantanal/server/content/utils/a$a;->c:Lcom/pantanal/server/content/utils/a$a;

    new-instance v5, Lcom/pantanal/server/content/utils/a$a;

    const-string v7, "IPC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pantanal/server/content/utils/a$a;->d:Lcom/pantanal/server/content/utils/a$a;

    new-instance v7, Lcom/pantanal/server/content/utils/a$a;

    const-string v9, "ILLEGAL_CALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pantanal/server/content/utils/a$a;->e:Lcom/pantanal/server/content/utils/a$a;

    new-instance v9, Lcom/pantanal/server/content/utils/a$a;

    const-string v11, "ILLEGAL_ARGS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/pantanal/server/content/utils/a$a;->f:Lcom/pantanal/server/content/utils/a$a;

    new-instance v11, Lcom/pantanal/server/content/utils/a$a;

    const-string v13, "SWITCH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/pantanal/server/content/utils/a$a;->g:Lcom/pantanal/server/content/utils/a$a;

    new-instance v13, Lcom/pantanal/server/content/utils/a$a;

    const-string v15, "PROCEDURE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/pantanal/server/content/utils/a$a;->h:Lcom/pantanal/server/content/utils/a$a;

    new-instance v15, Lcom/pantanal/server/content/utils/a$a;

    const-string v14, "USER_SETTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/pantanal/server/content/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/pantanal/server/content/utils/a$a;->i:Lcom/pantanal/server/content/utils/a$a;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/pantanal/server/content/utils/a$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/pantanal/server/content/utils/a$a;->j:[Lcom/pantanal/server/content/utils/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantanal/server/content/utils/a$a;
    .registers 2

    const-class v0, Lcom/pantanal/server/content/utils/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pantanal/server/content/utils/a$a;

    return-object p0
.end method

.method public static values()[Lcom/pantanal/server/content/utils/a$a;
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/utils/a$a;->j:[Lcom/pantanal/server/content/utils/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantanal/server/content/utils/a$a;

    return-object v0
.end method
