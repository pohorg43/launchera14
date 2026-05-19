.class public interface abstract Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/utils/SystemSettingsAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITableAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/utils/SystemSettingsAccessor$ITableAccessor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
.end method

.method public abstract getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
.end method

.method public abstract getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
.end method

.method public abstract getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUriFor(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract withDefaultString(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
