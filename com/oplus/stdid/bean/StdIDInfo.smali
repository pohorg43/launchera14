.class public final Lcom/oplus/stdid/bean/StdIDInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static Type_APID:I = 0x1

.field public static Type_AUID:I = 0x2

.field public static Type_DUID:I = 0x4

.field public static Type_GUID:I = 0x10

.field public static Type_OUID:I = 0x8


# instance fields
.field public final APID:Ljava/lang/String;

.field public final AUID:Ljava/lang/String;

.field public final DUID:Ljava/lang/String;

.field public final GUID:Ljava/lang/String;

.field public final OUID:Ljava/lang/String;

.field public final OUIDStatus:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/stdid/bean/StdIDInfo;->GUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/stdid/bean/StdIDInfo;->OUID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oplus/stdid/bean/StdIDInfo;->OUIDStatus:Z

    iput-object p4, p0, Lcom/oplus/stdid/bean/StdIDInfo;->DUID:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/stdid/bean/StdIDInfo;->APID:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/stdid/bean/StdIDInfo;->AUID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->APID:Ljava/lang/String;

    return-object p0
.end method

.method public getAUID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->AUID:Ljava/lang/String;

    return-object p0
.end method

.method public getDUID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->DUID:Ljava/lang/String;

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->GUID:Ljava/lang/String;

    return-object p0
.end method

.method public getOUID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->OUID:Ljava/lang/String;

    return-object p0
.end method

.method public getOUIDStatus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/stdid/bean/StdIDInfo;->OUIDStatus:Z

    return p0
.end method
