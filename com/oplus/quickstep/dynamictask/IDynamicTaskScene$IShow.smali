.class public interface abstract Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;,
        Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract allow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation
.end method

.method public abstract delayMillis()J
.end method

.method public abstract show(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract verifyAllowFirst()Z
.end method
