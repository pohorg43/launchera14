.class final Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cr:Landroid/content/ContentResolver;

.field public final synthetic $name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;->$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;->$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;->$cr:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/oplus/utrace/utils/SystemSettingsAccessor$SystemTable$getString$1;->$name:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
