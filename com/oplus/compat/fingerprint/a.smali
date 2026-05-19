.class public final synthetic Lcom/oplus/compat/fingerprint/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/fingerprint/a;->a:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/a;->a:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;->onOpticalFingerprintUpdate(I)V

    return-void
.end method
