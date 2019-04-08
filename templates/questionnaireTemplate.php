<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">
            <h2>Questionnaire</h2>
        </div>
        <div class="card-body">

            <?php
            if (isset($questErrorText))
                echo '<span class="error">' . $questErrorText . '</span>';
            ?>
            <form action="<?php echo $this->linkTo('Questionnaire','newQuest'); ?>>" method="post">

                <div class="form-group">
                    <label for="titre">Titre</label>
                    <input type="text" class="form-control" name="questTitre" id="inTitre" placeholder="Titre">
                </div>
                <div class="form-group">
                <label for="description">Description</label> 
                <input type="test"class="form-control" name="description" id="inDescription" placeholder="Description">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="date_Ouverture">Date Ouverture</label>
                        <input type="text" class="form-control" name="dateOuverture" id="inDate_Ouverture" placeholder="jj/mm/aaaa">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="date_fermeture">Date Fermeture</label>
                        <input type="text" class="form-control" name="date_fermuture" id="inDate_Fermeture" placeholder="jj/mm/aaaa">
                    </div>
                    <input type="text" class="form-control" name="dateOuverture" id="inDate_Ouverture" placeholder="jj/mm/aaaa">
                    </div>        
                <div class="form-group">
                    <label for="">Mode_Acces</label>
                    <input type="mode_acces" class="form-control" name="mode_acces" id="inMode_Acces" placeholder="Mode_Acces">
                    <form>
                    <select name="Mode_Access" size=3>
                    <option>connecté
                    <option>public
                    <option>lien
                    </select>
                    <button type="submit" class="btn btn-dark" style="background-color: #1B5040;">Creer mon Questionnaire...</button>
                    </form>
                </div>
        
            </form>
        </div>
    </div>
</div> 