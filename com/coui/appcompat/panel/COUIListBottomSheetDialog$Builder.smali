.class public Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Z


# virtual methods
.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a:Z

    return-object p0
.end method

.method public setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    return-object p0
.end method
